void main(){
    //Variáveis simples
   int v1 = 1253;
   int v2 = 3261;

    //Listas ou Vetores
    List<double> varios = [10,20,30,40];

   //Chamando a função que soma dois números
   int resultado = somaDois(v1,v2);


   //Mostrando o resultado
   print('A soma de ${v1} + ${v2}  é ${resultado}');


   //Chamando a função que soma vários números
   double total = somaVarios(varios);
   print ('O total da soma de varios numeros é ${total}');
}

int somaDois(int a, int b){
    return a + b;
}

double somaVarios(List<double>  vetor){
    double total = 0;
    for(var i = 0; i < vetor.length; i++){
        total += vetor[i];
    }
    return total;
}