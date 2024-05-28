require_relative '../lib/caesar_cipher'

describe '#caesar_cipher' do
  it 'returns the string unchanged if num is 0' do
    expect(caesar_cipher('Hello Rspec', 0)).to eql('Hello Rspec')
  end

  it 'returns the string shifted by num in order of the alphabeth' do
    expect(caesar_cipher('Hello Rspec', 1)).to eql('Ifmmp Stqfd')
  end

  it 'doesnt change characters outside of the alphabeth' do
    expect(caesar_cipher('Hello, Rspec!', 1)).to eql('Ifmmp, Stqfd!')
  end

  it 'can handle shifts larger that the lenght of the alphabeth' do
    expect(caesar_cipher('Hello Rspec', 100)).to eql('Dahhk Nolay')
  end

  it 'can handle negative shift' do
    expect(caesar_cipher('Hello Rspec', -1)).to eql('Gdkkn Qrodb')
  end

  it 'can handle negative shift larger than lenght of the alphabeth' do
    expect(caesar_cipher('Hello Rspec', -100)).to eql('Lipps Vwtig')
  end
end
