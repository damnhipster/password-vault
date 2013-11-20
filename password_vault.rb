class PasswordVault

	@@keys = { amazon: "amazon-password",
		 		ebay: "ebay-password" }

	def get_password_for key 
		puts key.to_sym
		@@keys[key.to_sym]
	end
end