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

bool OrderBuy(
    string symbol,
    double lots,
    double price,
    double stopLoss,
    double takeProfit,
    int deviation,
    int magicNumber,
    string comment
)
{
    MqlTradeRequest request;
    MqlTradeResult  result;
    ZeroMemory(request);
    ZeroMemory(result);

    request.action    = TRADE_ACTION_DEAL;
    request.symbol    = symbol;
    request.volume    = lots;
    request.type      = ORDER_TYPE_BUY;
    request.price     = price;
    request.sl        = stopLoss;
    request.tp        = takeProfit;
    request.deviation = deviation;
    request.magic     = magicNumber;
    request.comment   = comment;

    if(!OrderSend(request, result))
    {
        Print("Buy Order Failed: " + result.comment);
        return false;
    }

    Print("Buy Order Sent! Ticket: " + IntegerToString(result.order));
    return true;
}

bool OrderSell(
    string symbol,
    double lots,
    double price,
    double stopLoss,
    double takeProfit,
    int deviation,
    int magicNumber,
    string comment
)
{
    MqlTradeRequest request;
    MqlTradeResult  result;
    ZeroMemory(request);
    ZeroMemory(result);

    request.action    = TRADE_ACTION_DEAL;
    request.symbol    = symbol;
    request.volume    = lots;
    request.type      = ORDER_TYPE_SELL;
    request.price     = price;
    request.sl        = stopLoss;
    request.tp        = takeProfit;
    request.deviation = deviation;
    request.magic     = magicNumber;
    request.comment   = comment;

    if(!OrderSend(request, result))
    {
        Print("Sell Order Failed: " + result.comment);
        return false;
    }

    Print("Sell Order Sent! Ticket: " + IntegerToString(result.order));
    return true;
}