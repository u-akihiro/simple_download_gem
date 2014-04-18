require 'downloader'

describe 'Downloader' do
	before do
		@dl = Downloader::Downloader.new
	end

	describe '#set_dtore_dir' do
		context '指定したディレクトリが存在せず新規で作成された場合' do
			it '作成したディレクトリパスが配列で返ってくる' do
				expect(@dl.set_store_dir('./test/images/')).to match_array ['./test/images/']
			end
		end
	end

	describe '#download' do
		context 'ファイルが存在しない場合' do
			it 'Errno::ENOENTが放出される' do
				expect do
					@dl.set_store_dir './test/images/'
					@dl.download 'https://pbs.twimg.com/media/4.jpg'
				end.to raise_error(OpenURI::HTTPError)
			end
		end
	end
end
