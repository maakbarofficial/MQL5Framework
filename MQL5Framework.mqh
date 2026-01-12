//+------------------------------------------------------------------+
//|                                                MQL5Framework.mqh |
//|                               Copyright 2026, Muhammad Ali Akbar |
//|                               https://github.com/maakbarofficial |
//+------------------------------------------------------------------+
#property copyright "Copyright 2026, Muhammad Ali Akbar"
#property link      "https://github.com/maakbarofficial"
//+------------------------------------------------------------------+
//| defines                                                          |
//+------------------------------------------------------------------+
#define MacrosHello   "Hello, world!"
#define MacrosYear    2010
//+------------------------------------------------------------------+
//| DLL imports                                                      |
//+------------------------------------------------------------------+
#import "user32.dll"
int      SendMessageA(int hWnd,int Msg,int wParam,int lParam);
#import "my_expert.dll"
int      ExpertRecalculate(int wParam,int lParam);
#import
//+------------------------------------------------------------------+
//| EX5 imports                                                      |
//+------------------------------------------------------------------+
#import "stdlib.ex5"
string ErrorDescription(int error_code);
#import
//+------------------------------------------------------------------+
