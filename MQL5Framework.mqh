//+------------------------------------------------------------------+
//|                                                MQL5Framework.mqh |
//|                               Copyright 2026, Muhammad Ali Akbar |
//|                               https://github.com/maakbarofficial |
//+------------------------------------------------------------------+
#property copyright "Copyright 2026, Muhammad Ali Akbar"
#property link      "https://github.com/maakbarofficial"


void showPrint(string message)
{
    Print(message);
}

void showAlert(string message)
{
    Alert(message);
}

void debugger(string message)
{
    Alert(message);
    Print(message);
    Comment(message);
}