Dado("que estou na pagina de Login") do
  visit "http://automationpractice.com/index.php?controller=authentication"
end

Quando("submeto o meu usuario e senha") do |table|
  user = table.rows_hash

  find("input[id=email]").set user[:email]
  find("input[id=passwd]").set user[:senha]

  click_on "SubmitLogin"
end

Então("deve ser redirecionado para a área logada") do
  page.has_text?("Manuela Santos")
  expect(page.has_text?("Manuela Santos")).to eq true
end

Então("devo ver a mensagem: {string}") do |expect_message|
  alert = find("div.alert.alert-danger > ol > li")
  expect(alert.text).to eql expect_message
end