# bowling_spec.rb
require_relative 'password_vault'

describe PasswordVault do
  it "should return password when key is passed" do
    @password_vault = PasswordVault.new
    expect(@password_vault.retrieve_password("amazon")).to eql "amazon_password"
  end

  it "should return password when key in uppercase is passed" do
    @password_vault = PasswordVault.new
    expect(@password_vault.retrieve_password("Amazon")).to eql "amazon_password"
  end

  it "should return password when key in uppercase is passed" do
    @password_vault = PasswordVault.new
    expect(@password_vault.retrieve_password(:Amazon)).to eql "amazon_password"
  end

  it "should add password when key and password is passed to it" do
    @password_vault = PasswordVault.new
    @password_vault.add_password("facebook","facebook_password")
    expect(@password_vault.retrieve_password("facebook")).to eql "facebook_password"
  end


end
