void main(){

var totalInvoice= 100000;
var numberOfPepole=5;
var typePercentagge=10;

double totalWithTp= totalInvoice + (totalInvoice  * typePercentagge/100);
int perPerson=(totalWithTp/numberOfPepole).round();

print("Everyone Pays $perPerson");

for( int i = 1; i <=numberOfPepole; i++){
    print("Person $i Pay: $perPerson Denars");
}
for( int i = 1; i <=numberOfPepole; i++){
    if (numberOfPepole>20) {
        print("The Number Of Pepole is Lare");
        break;
    }
    print("Person $i Pay $perPerson Denars");
}
int leftover =totalWithTp.round() % numberOfPepole;
print("Residual: $leftover Denars");
}