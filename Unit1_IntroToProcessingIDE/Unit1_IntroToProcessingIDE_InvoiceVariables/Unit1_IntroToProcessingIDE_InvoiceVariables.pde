/*
  Name: Jessica Chen
  Date: Wednesday, December 2, 2020
  Teacher: M. Cruceanu
  Assignment: Print out an invoice about a company of your choice
  
  ø Invoice Assignment ø
  • Offer the customer two products and ask how many they would like
  • Invoice must include
      • Store name, address, date, logo
      • Items purchased, subtotal, tax(13%), final total
      • Numbers should line up
  • Variables must be used for the 
      • input, number purchased (both products), subtotal (both products), tax, and total
  • BONUS - round the numbers to two decimal places
      • We went over this in class, say x is the number: round(x*100)/100
      • Hmmm, I wonder if I can make this a function or something
*/


//Global Variables

//Store Details
String storeName = "  Commodoties for Capitalism\t";
String storeLogo    = "•∫«∆»¬ø       ";
String storeAddress = " 622 Marx Road ";


//Products
String product1 = "5 foot shovel ";
String product2 = "Canned Peaches";

//Product Details
float price1 = 0.99;
float price2 = 20.55;
int num1 = 11;
int num2 = 8;


//calculations
float subtotal = price1*num1+price2*num2;
float tax = subtotal*.13; 
float total = subtotal + tax;  

//calculation names
String subtotalw = "Subtotal          ";
String taxw      = "HST(13%)           "; 
String totalw    = "Total             ";


//Footer
//Encoded quote with a caesar cipher using the address number
//To decrypt, second shift should work if you're "encrypting" it, 24 for "decrypting" it.
String endQuote = "Qmkc kcl hsqr uylr rm uyraf rfc umpjb zspl."; 
String endStatement = "Thank you for shopping with us!";
//built-in date functions
int day = day();
int month = month();
int year = year();


//Formatting stuff
String indentSpace = "    ";
String sectionSpace = "\t\t";
String secondDigit = " ";
String numL = "  ";




void setup(){
  //Store Information
  println(storeLogo + indentSpace + sectionSpace + storeName);
  println(indentSpace + sectionSpace + sectionSpace + indentSpace + storeAddress + "\n\n");
  
  //Purchases
  println("Purchases");
  println(indentSpace + "Product" + sectionSpace + "Quantity" + sectionSpace + "Price");
  println(indentSpace + product1 + sectionSpace + num1 + sectionSpace + price1);
  println(indentSpace + product2 + sectionSpace + num2 + secondDigit + sectionSpace + price2 + "\n");
  
  //Calculations
  println(subtotalw + sectionSpace + numL + sectionSpace + subtotal); 
  print(taxw + sectionSpace + numL + sectionSpace);
  places2(tax);
  print("\n");
  print(totalw + sectionSpace + numL + sectionSpace);
  places2(total);
  println("\n");
  
  //Footer
  println(endQuote);
  println(endStatement);
  println(day + "/" + month + "/" + year);
}
//This function is used to round the values to two decimal places.
void places2(float n){
 float x = round(n*100);
 float t = x/100;
 println(t);
}
