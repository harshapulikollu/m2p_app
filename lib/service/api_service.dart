import 'package:m2p_app/model/form_data.dart';
import 'package:m2p_app/util/responses.dart';

import '../model/form_template.dart';

class ApiService {

  /*
  ... here we can have methods for OTP login, resend and more
   */

  Future<FormData> fetchFormData() async {
    //TODO: make proper API call here to get form data
    return FormData.fromJson(Responses.formDataJson);
  }

  Future<FormTemplate> fetchFormTemplate() async {
    //TODO: make proper API call here to get form template data
    return FormTemplate.fromJson(Responses.formTemplateJson);
  }
}