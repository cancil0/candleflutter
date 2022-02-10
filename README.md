# candleflutter

    If you need a backend, you can take a look link below
      https://github.com/cancil0/Candle-Backend
      If you use above link for backend, you can use one of below apiUrls
        https://localhost:5001/api/
        http://localhost:5000/api/

  ApiUrl
    If you want to debug, you have to change apiUrl for your local.
    
    For Chrome or Edge use https://localhost:9091/api/
    For Android Emulator use https://10.0.2.2:9091/api/
    For Physical Android Device use https://192.168.1.36:9091/api/
      192.168.1.36 is localhost address for my computer. 
      You can learn your ip address from Command Prompt (cmd).
        Write ipconfig to cmd then check for IPv4 Address.
      If you debug at Physical Device, you have to give permission 
        for your port from windows firewall.

  PrivateTokenKey
    is a key which provides extra security for jwt token.
    You can find same key that is named securityKey at
      https://github.com/cancil0/Candle-Backend/blob/master/Candle.Web.Api/appsettings.json

  DB
    I used Postgre DB. I shared a db dumb. If you use Candle-Backend, you can import. You can find db at
      https://github.com/cancil0/Candle-Backend
