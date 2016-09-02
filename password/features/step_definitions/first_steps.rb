Dado(/^que fiz algo com (\d+)$/) do |arg1|
  @local ||= {}
  @local[arg1] = Locais.info(arg1)
end

Quando(/^tento fazer outra coisa$/) do
    pending # Write code here that turns the phrase above into concrete actions
end

Então(/^não consigo por ser burro$/) do
    pending # Write code here that turns the phrase above into concrete actions
end

