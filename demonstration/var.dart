void main(){
    int x = 10;
    double y = 50.5;
    String texto = 'Qualquer coisa';
    bool vf = true;
    var semtipo;
    dynamic dinamico = 'oi';
    Object name = 'Bob';
    double pi = 2.5;
    double pi_arredondado = pi.truncateToDouble();
    



    //Saida com concatenação de string
    print("O valor de x é "+ x.toString());
    print("O valor de y é "+ y.toString());
    print("O valor de texto é "+ texto);

    //Saida com template String
    print("O valor de x é ${x} ");
    print("O valor de y é ${y} ");
    print("O valor de texto é ${texto} ");
    print("O valor de vf é ${vf} ");
    semtipo = 3.14;
    print("O valor de semtipo é ${semtipo}");
    print("O valor de dinamico é ${dinamico}");
    print("O valor de object é ${name}");
    dinamico = 50.9;
    print(pi_arredondado); 
}