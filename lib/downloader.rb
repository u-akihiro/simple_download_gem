require "downloader/version"
require 'fileutils'
require 'open-uri'

module Downloader
	class Downloader
		def set_store_dir(dir)
			@dir = dir
			#指定されたディレクトリが存在しない場合は作成する
			if !File.exists? dir then
				FileUtils.mkdir_p dir, :mode => 0777
			end
		end

		def download(url)
			filename = File.basename(url)
			file_path = @dir + filename

			begin
				file = open file_path, 'wb'
				data = open url
				file.write data.read
			rescue
				raise
			end
		end
	end
end
