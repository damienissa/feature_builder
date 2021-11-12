final domainUsecaseTemplateFile = r'''
import 'package:disposer/disposer.dart';
import '../entities/template_entitie.dart';
import '../repositories/template_domain_repository.dart';

class TemplateUsecase with Disposable {
  TemplateUsecase(this.domainRepository);

  final TemplateDomainRepository domainRepository;

  @override
  List<Disposable> get disposables => [domainRepository];

  Future<TemplateEntitie> fetchEntitie() {
    return domainRepository.fetchEntitie();
  }

  Stream<double> dataFeed() => domainRepository.dataFeed();
}
''';
