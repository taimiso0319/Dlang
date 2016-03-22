import std.stdio;
import std.random;

void main(){
    int c = 0;
    int t = 0;
    static int cnum = 6;
    Mt19937 gen;
    writeln(t,":");
    while(c<cnum){
        gen.seed(unpredictableSeed);
        auto n = gen.front;
        auto mod = n%cnum;
        switch(mod){
            case 0:
                write("金");
                break;
            case 1:
                write("沢");
                break;
            case 2:
                write("工");
                break;
            case 3:
                write("業");
                break;
            case 4:
                write("大");
                break;
            case 5:
                write("学");
                break;
            default:
                break;
        }
        c = c == mod ? c + 1 : 0;
        if(c==0){
            t++;
            writeln();
            writeln(t,":");
        }
    }
    return;
}
