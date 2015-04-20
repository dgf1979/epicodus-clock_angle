require('rspec')
require('clock_angle')

describe('String#clock_angle') do
  it('is 0 at 12:00') do
    expect( "12:00".clock_angle ).to(eq("0"))
  end

  it('is 90 at 3:00') do
    expect( "3:00".clock_angle ).to(eq("90.0"))
  end

  it('is 30 at 4:15') do
    expect( "4:15".clock_angle ).to(eq("37.5"))
  end
end
