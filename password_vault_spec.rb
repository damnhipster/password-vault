# bowling_spec.rb
require_relative 'password_vault'

describe PasswordVault, "#get_password" do
  it "returns the password for given keys" do
    password_vault = PasswordVault.new
    password_vault.get_password_for("Amazon").should ==("amazon-password")
    password_vault.get_password_for("Ebay").should ==("ebay-password")
  end

  it "returns the password for keys which are not case sensitive" do
    password_vault = PasswordVault.new
    password_vault.get_password_for("Amazon").should ==("amazon-password")
    password_vault.get_password_for("amazon").should ==("amazon-password")
  end
end