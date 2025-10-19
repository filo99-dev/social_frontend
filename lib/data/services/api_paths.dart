import 'dart:io';

const _basePath = 'http://localhost:8080';
const kRegisterPath = '$_basePath/all/register';
const kLoginPath = '$_basePath/all/login';
const kUsernameCheck = '$_basePath/all/username/check';
final kRequestHeaders = {HttpHeaders.contentTypeHeader: ContentType.json.value};
