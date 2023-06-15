import 'api_constants.dart';
import 'dio_client.dart';

class ApiWorker with ApiConstants {
  late DioClient dio;
  ApiWorker() {
    dio = DioClient();
  }

  /* Future<LoginResponce> loginApi(String email, String password) async {
    Map<String, dynamic> data = {
      'email': email,
      'password': password,
    };
    final response = await dio
        .postbycustom(
      ApiConstants.login,
      data: data,
    )
        .onError((DioException error, stackTrace) {
      log(error.toString());
      return Future.error(throw DioExceptionHandler.fromDioError(error));
    });
    return LoginResponce.fromJson(response.data);
  } */

  /* /// CATEGORY SECTION ///
  Future<CategoryData> setCategory(CategoryData sendData) async {
    log("${sendData.toSendJson()}");
    final response = await dio
        .postbycustom(ApiConstants.submit_SubCategory,
            data: sendData.toSendJson())
        .onError((DioError error, stackTrace) {
      log(error.toString());
      return Future.error(throw DioException.fromDioError(error));
    });
    return CategoryData.fromJson(response.data);
  }

  Future<CategoryData> updateCategory(CategoryData sendData) async {
    log("CATEGORY DATA ${sendData.toCategoryJson()}");
    log("SUb CATEGORY DATA ${sendData.toSubCategoryJson()}");
    Map<String, dynamic> fromData = {
      "category": jsonEncode(sendData.toCategoryJson()),
      "sub_catagories": jsonEncode(sendData.toSubCategoryJson()),
    };
    Logger().e("CATEGORY DATA ${jsonEncode(fromData)}");
    final response = await dio
        .postbycustom(ApiConstants.update_SubCategory, data: fromData)
        .onError((DioError error, stackTrace) {
      log(error.toString());
      return Future.error(throw DioException.fromDioError(error));
    });
    return CategoryData.fromJson(response.data);
  }

  Future<CategoryModel> getCategory() async {
    final response = await dio
        .getbycustom(ApiConstants.catagories)
        .onError((DioError error, stackTrace) {
      log(error.toString());
      return Future.error(throw DioException.fromDioError(error));
    });

    return CategoryModel.fromJson(response.data);
  }

  /// [removeSubCategoryOrCategory] use to Remove SubCategory or Category pass true false on [isRemoveCategory]
  Future<Response> removeSubCategoryOrCategory(String id,
      {bool isRemoveCategory = false}) async {
    final data = {'id': id};
    final response = await dio
        .postbycustom(
            isRemoveCategory
                ? ApiConstants.delete_Category
                : ApiConstants.deleteSubCategory,
            data: data)
        .onError((DioError error, stackTrace) {
      log(error.toString());
      return Future.error(throw DioException.fromDioError(error));
    });
    return response;
  }

  */ /************************** PRODUCT SECTION ******************/ /*

  /// [addProduct] use to Add Product
  Future<Response> addProduct(ProductData sendData) async {
    FormData mapData = await sendData.toJsonSend();
    final response = await dio
        .postbycustom(ApiConstants.add_product, data: mapData)
        .onError((DioError error, stackTrace) {
      log(error.toString());
      return Future.error(throw DioException.fromDioError(error));
    });
    return response;
  }

  Future<ProductResponce> getProduct() async {
    final response = await dio
        .getbycustom(ApiConstants.fetchproduct)
        .onError((DioError error, stackTrace) {
      log(error.toString());
      return Future.error(throw DioException.fromDioError(error));
    });

    return ProductResponce.fromJson(response.data);
  }

  /// [addProduct] use to Add Product
  Future<Response> addStaff(Map<String, dynamic> sendData) async {
    final response = await dio
        .postbycustom(ApiConstants.add_salesman,
            data: FormData.fromMap(sendData))
        .onError((DioError error, stackTrace) {
      log(error.toString());
      return Future.error(throw DioException.fromDioError(error));
    });
    return response;
  }*/
}
