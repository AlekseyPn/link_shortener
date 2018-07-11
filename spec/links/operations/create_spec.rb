RSpec.describe Links::Operations::Create do
  let(:operation) { described_class.new(repo: link_repo) }
  let(:link_repo) { double(:link_repo, create: Link.new) }

  subject { operation.call(url: 'google.com') }

  it 'calls repository with right args' do
    expect(link_repo).to receive(:create).with(url: 'google.com', key: '123')
    subject
  end
end
