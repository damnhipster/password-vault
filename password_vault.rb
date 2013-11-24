class PasswordVault
   KEYS = {:amazon => "amazon_password", :ebay => "ebay_password"}

   def retrieve_password(key)
   	key = key.downcase
   	KEYS[key.to_sym]
   end
   
   def add_password(symbol, password)
   	KEYS[symbol.to_sym] = password
   end
end
