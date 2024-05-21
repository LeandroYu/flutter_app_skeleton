class SharedStrings {
  const SharedStrings._();

  static const SharedStrings instance = SharedStrings._();

  String get requiredInputErrorText => 'Campo obrigatório';
  String get infoButton => 'Entendi';
  String get cancel => 'Cancelar';
  String get yesContinue => 'Sim, continuar';
  String get no => 'Não, cancelar';
  String get loadError => 'Erro ao carregar dados';
  String get noDataFound => 'Nenhum dado encontrado';
  String get confirm => 'Confirmar';
  String get close => 'Fechar';
}
