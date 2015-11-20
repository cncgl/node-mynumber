mynumber = require '../'
expect = require('chai').expect

valid_corporate_numbers = ['2010001163289', '1010601008968', '1012701000739', '1011203001683']
invalid_corporate_numbers = ['2010001163281', '1010601008961', '1012701000731', '1011203001681', '1']
valid_individual_numbers = [
  '895980423139', '436673173767', '430792811528', '107611545184',
  '964041141335', '044580705690', '439023617171', '680557982222',
  '335790979402', '763625921000', '237697461442', '801014241860',
  '999312076001', '390147969450', '659969299480', '401035903377',
  '222451878711', '157144228592', '107374955712', '548836529885']
invalid_individual_numbers = [
  '828731078542', '430663651143', '211421187381', '627852730078',
  '693415034651', '189518719745', '105892595337', '491136797254',
  '345537562761', '348049767367', '398715343044', '387715333522',
  '551432497896', '923093948304', '337166860307', '914437209500',
  '475252998663', '983159735197', '106591838679', '710772400703']
valid_numbers = ['2010001163289', '430792811528']
describe 'mynumber', () ->
  it 'should true when valid corporate number', () ->
    for e in valid_corporate_numbers
      expect(mynumber.corporate_number e).to.be.true
  it 'should false when invalid corporate number', () ->
    for e in invalid_corporate_numbers
      expect(mynumber.corporate_number e).to.be.false
  it 'should true when valid individual number', () ->
    for e in valid_individual_numbers
      expect(mynumber.individual_number e).to.be.true
  it 'should false when invalid individual number', () ->
    for e in invalid_individual_numbers
      expect(mynumber.individual_number e).to.be.false
  it 'should true when valid number', () ->
    for e in valid_numbers
      expect(mynumber.valid e).to.be.true
