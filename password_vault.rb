class PasswordVault

	@@keys = { amazon: "amazon-password",
		 		ebay: "ebay-password" }

	def get_password_for key 
		@@keys[key.downcase.to_sym]
	end
end