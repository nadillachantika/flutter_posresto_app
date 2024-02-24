import 'package:flutter_restopos/data/models/response/product_response_model.dart';
import 'package:sqflite/sqflite.dart';

class ProductLocalDatasource {
  ProductLocalDatasource._init();

  static final ProductLocalDatasource instance = ProductLocalDatasource._init();

  final String tableProduct = 'products';

  static Database? _database;

  //  "id": 7,
  //         "category_id": 3,
  //         "name": "Colin Bayer PhD",
  //         "description": "Eveniet molestiae laudantium vitae consectetur temporibus et. Dolorum cum quo quibusdam doloribus suscipit. At quo maxime excepturi nihil autem.",
  //         "image": "https://via.placeholder.com/640x480.png/00aa66?text=quasi",
  //         "price": 95,
  //         "stock": 96,
  //         "is_available": 1,
  //         "created_at": "2024-02-13T00:49:21.000000Z",
  //         "updated_at": "2024-02-13T00:49:21.000000Z"

  Future<void> _createDb(Database db, int version) async {
    await db.execute('''
    CREATE TABLE $tableProduct(
      id INTEGER PRIMARY KEY,
      productId INTEGER,
      name TEXT,
      categoryId INTEGER,
      categoryName TEXT,
      description TEXT,
      image TEXT,
      price TEXT,
      stock INTEGER,
      status INTEGER,
      isAvailable INTEGER,
      createdAt TEXT,
      updatedAt TEXT
    )
    ''');
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = dbPath + filePath;
    return await openDatabase(path, version: 1, onCreate: _createDb);
  }

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('dbresto14.db');
    return _database!;
  }

  Future<void> insertProduct(Product product) async {
    final db = await instance.database;
    await db.insert(tableProduct, product.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<void> insertProducts(List<Product> products) async{
    final db = await instance.database;
    for(var product in products){
      await db.insert(tableProduct, product.toLocalMap(),
      conflictAlgorithm: ConflictAlgorithm.replace);

      print('insertd success ${product.name}');
    }
  }

  Future<List<Product>> getProducts() async{
    final db = await instance.database;
    final List<Map<String, dynamic>> maps = await db.query(tableProduct);
    return List.generate(maps.length, (index) => Product.fromLocalMap(maps[index]));
  }

  Future<void> deleteAllProducts() async{
    final db = await instance.database;
    await db.delete(tableProduct);
  }
}
