void main() {
  double distanciaTotal = 125;
  double velocidadeCarro = 90;
  double velocidadeCaminhao = 80;
  int numeroPedagios = 3;

  // Convertendo minutos em horas para uniformizar as unidades
  double tempoAdicionalPedagioCarro = 5 / 60;

  double tempoCruzamento =
      distanciaTotal / (velocidadeCarro + velocidadeCaminhao);

  double tempoAdicionalCarro = numeroPedagios * tempoAdicionalPedagioCarro;

  double tempoEfetivoCarro = tempoCruzamento + tempoAdicionalCarro;

  double distanciaCarro = velocidadeCarro * tempoCruzamento;
  double distanciaCaminhao = velocidadeCaminhao * tempoCruzamento;

  print(
    "Tempo de cruzamento (sem considerar pedágios): ${tempoCruzamento.toStringAsFixed(2)} horas",
  );
  print(
    "Tempo efetivo de viagem do carro (com pedágios): ${tempoEfetivoCarro.toStringAsFixed(2)} horas",
  );
  print(
    "Distância percorrida pelo carro até o ponto de cruzamento: ${distanciaCarro.toStringAsFixed(2)} km",
  );
  print(
    "Distância percorrida pelo caminhão até o ponto de cruzamento: ${distanciaCaminhao.toStringAsFixed(2)} km",
  );

  if (distanciaCarro > distanciaCaminhao) {
    print("O caminhão chegou primeiro ao ponto de cruzamento");
  } else if (distanciaCarro < distanciaCaminhao) {
    print("O carro chegou primeiro ao ponto de cruzamento");
  } else {
    print("O carro e o caminhão chegaram juntos ao ponto de cruzamento");
  }
}
