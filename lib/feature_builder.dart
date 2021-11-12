import 'dart:io';

import 'src/data/datasources/template_data_source.dart';
import 'src/data/models/template_data_model.dart';
import 'src/data/repositories/template_data_repository.dart';
import 'src/domain/entities/template_entitie.dart';
import 'src/domain/repositories/template_domain_repository.dart';
import 'src/domain/usecases/template_usecase.dart';
import 'src/presentation/pages/template_page.dart';
import 'src/presentation/view_models/template_view_model.dart';
import 'src/presentation/widgets/template_widget.dart';
import 'src/template_module.dart';

void main(List<String> args) {
  final moduleName = args.isEmpty ? 'Login' : args.first;
  final uri = Uri.file(Platform.script.path);
  var segments = List.from(uri.pathSegments);
  segments.removeLast();

  final datasourceTemplate = 'src/data/datasources/template_data_source.dart';
  final dataModelTemplate = 'src/data/models/template_data_model.dart';
  final dataRepositoryTemplate =
      'src/data/repositories/template_data_repository.dart';

  final domainEntitieTemplate = 'src/domain/entities/template_entitie.dart';
  final domainUsecaseTemplate = 'src/domain/usecases/template_usecase.dart';
  final domainRepositoryTemplate =
      'src/domain/repositories/template_domain_repository.dart';

  final presentationPageTemplate = 'src/presentation/pages/template_page.dart';
  final presentationViewModelTemplate =
      'src/presentation/view_models/template_view_model.dart';
  final presentationWidgetTemplate =
      'src/presentation/widgets/template_widget.dart';

  final moduleTemplate = 'src/template_module.dart';

  final datasourceFile = datasourceTemplateFile
      .replaceAll(
          'Template', moduleName[0].toUpperCase() + moduleName.substring(1))
      .replaceAll('template', moduleName.toLowerCase());
  final dataModelFile = dataModelTemplateFile
      .replaceAll(
          'Template', moduleName[0].toUpperCase() + moduleName.substring(1))
      .replaceAll('template', moduleName.toLowerCase());
  final dataRepositoryFile = dataRepositoryTemplateFile
      .replaceAll(
          'Template', moduleName[0].toUpperCase() + moduleName.substring(1))
      .replaceAll('template', moduleName.toLowerCase());
  final domainEntitieFile = domainEntitieTemplateFile
      .replaceAll(
          'Template', moduleName[0].toUpperCase() + moduleName.substring(1))
      .replaceAll('template', moduleName.toLowerCase());
  final domainUsecaseFile = domainUsecaseTemplateFile
      .replaceAll(
          'Template', moduleName[0].toUpperCase() + moduleName.substring(1))
      .replaceAll('template', moduleName.toLowerCase());
  final domainRepositoryFile = domainRepositoryTemplateFile
      .replaceAll(
          'Template', moduleName[0].toUpperCase() + moduleName.substring(1))
      .replaceAll('template', moduleName.toLowerCase());
  final presentationPageFile = presentationPageTemplateFile
      .replaceAll(
          'Template', moduleName[0].toUpperCase() + moduleName.substring(1))
      .replaceAll('template', moduleName.toLowerCase());
  final presentationViewModelFile = presentationViewModelTemplateFile
      .replaceAll(
          'Template', moduleName[0].toUpperCase() + moduleName.substring(1))
      .replaceAll('template', moduleName.toLowerCase());
  final presentationWidgetFile = presentationWidgetTemplateFile
      .replaceAll(
          'Template', moduleName[0].toUpperCase() + moduleName.substring(1))
      .replaceAll('template', moduleName.toLowerCase());
  final moduleFile = moduleTemplateFile
      .replaceAll(
          'Template', moduleName[0].toUpperCase() + moduleName.substring(1))
      .replaceAll('template', moduleName.toLowerCase());

  final datasourceFilePath = datasourceTemplate
      .replaceAll('template', moduleName.toLowerCase())
      .replaceAll('src/', 'lib/features/${moduleName.toLowerCase()}/');
  final dataModelFilePath = dataModelTemplate
      .replaceAll('template', moduleName.toLowerCase())
      .replaceAll('src/', 'lib/features/${moduleName.toLowerCase()}/');
  final dataRepositoryFilePath = dataRepositoryTemplate
      .replaceAll('template', moduleName.toLowerCase())
      .replaceAll('src/', 'lib/features/${moduleName.toLowerCase()}/');
  final domainEntitieFilePath = domainEntitieTemplate
      .replaceAll('template', moduleName.toLowerCase())
      .replaceAll('src/', 'lib/features/${moduleName.toLowerCase()}/');
  final domainUsecaseFilePath = domainUsecaseTemplate
      .replaceAll('template', moduleName.toLowerCase())
      .replaceAll('src/', 'lib/features/${moduleName.toLowerCase()}/');
  final domainRepositoryFilePath = domainRepositoryTemplate
      .replaceAll('template', moduleName.toLowerCase())
      .replaceAll('src/', 'lib/features/${moduleName.toLowerCase()}/');
  final presentationPageFilePath = presentationPageTemplate
      .replaceAll('template', moduleName.toLowerCase())
      .replaceAll('src/', 'lib/features/${moduleName.toLowerCase()}/');
  final presentationViewModelFilePath = presentationViewModelTemplate
      .replaceAll('template', moduleName.toLowerCase())
      .replaceAll('src/', 'lib/features/${moduleName.toLowerCase()}/');
  final presentationWidgetFilePath = presentationWidgetTemplate
      .replaceAll('template', moduleName.toLowerCase())
      .replaceAll('src/', 'lib/features/${moduleName.toLowerCase()}/');
  final moduleFilePath = moduleTemplate
      .replaceAll('template', moduleName.toLowerCase())
      .replaceAll('src/', 'lib/features/${moduleName.toLowerCase()}/');

  File(datasourceFilePath)
    ..createSync(recursive: true)
    ..writeAsStringSync(datasourceFile);
  File(dataModelFilePath)
    ..createSync(recursive: true)
    ..writeAsStringSync(dataModelFile);
  File(dataRepositoryFilePath)
    ..createSync(recursive: true)
    ..writeAsStringSync(dataRepositoryFile);
  File(domainEntitieFilePath)
    ..createSync(recursive: true)
    ..writeAsStringSync(domainEntitieFile);
  File(domainUsecaseFilePath)
    ..createSync(recursive: true)
    ..writeAsStringSync(domainUsecaseFile);
  File(domainRepositoryFilePath)
    ..createSync(recursive: true)
    ..writeAsStringSync(domainRepositoryFile);
  File(presentationPageFilePath)
    ..createSync(recursive: true)
    ..writeAsStringSync(presentationPageFile);
  File(presentationViewModelFilePath)
    ..createSync(recursive: true)
    ..writeAsStringSync(presentationViewModelFile);
  File(presentationWidgetFilePath)
    ..createSync(recursive: true)
    ..writeAsStringSync(presentationWidgetFile);
  File(moduleFilePath)
    ..createSync(recursive: true)
    ..writeAsStringSync(moduleFile);
}
