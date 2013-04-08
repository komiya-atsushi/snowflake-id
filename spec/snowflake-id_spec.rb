require 'spec_helper'
require 'time'

describe SnowflakeId do
  it 'should have a version number' do
    SnowflakeId::VERSION.should_not be_nil
  end

  context 'of 321239371296694272' do
    before { @snowflake = SnowflakeId.new(321239371296694272) }

    describe '#to_s' do
      subject { @snowflake.to_s }
      it { should eq '321239371296694272' }
    end

    describe '#id' do
      subject { @snowflake.id }
      it { should eq 321239371296694272 }
    end

    describe '#to_time' do
      subject { @snowflake.to_time }
      it { should be_within(0.0001).of(Time.parse('Mon Apr 08 12:33:29.113 +0000 2013')) }
    end
  end
end

describe Time do
  TIME = "2013-04-08 21:33:29 +0900"

  context "of #{TIME}" do
    before { @time = Time.parse(TIME) }

    describe '#to_snowflake' do
      subject { @time.to_snowflake }
      it { should eq SnowflakeId.new((1365424409000 - 1288834974657) << 22) }
    end
  end
end
