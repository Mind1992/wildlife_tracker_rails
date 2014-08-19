describe Sighting do
  it { should validate_presence_of :date}
  it { should validate_presence_of :latitude}
  it { should validate_presence_of :longitude}
  it { should validate_presence_of :kind_id}

  it { should belong_to :kind}
end
