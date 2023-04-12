require 'make_snippet'

RSpec.describe 'returns string unless its longer than 5 words then adds a ...' do
  it 'returns a an empty string when given' do
    result = make_snippet('')
    expect(result).to eq ''
  end

  it 'returns a string when it is less than 6 words' do
    result = make_snippet('Hi my name is Charlie')
    expect(result).to eq 'Hi my name is Charlie'
  end

  it 'returns a string with more than 5 words with ... after the fifth word' do
    result = make_snippet('One of my favourite Pokemon is Munchlax')
    expect(result).to eq 'One of my favourite Pokemon...'
  end
end