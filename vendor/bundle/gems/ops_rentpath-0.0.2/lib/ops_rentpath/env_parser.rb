module OpsRentpath

  class EnvParser

    class << self

      # Load environment variables and add them to the ENV hash
      def parse_and_apply_cfg(config_file = '/etc/rentpath/environment.cfg')
        config_file_content(config_file).each do |line|
          unless skip_parsing? line
            parsed                     = parse_line line
            ENV[parsed['key']] = parsed['value'] unless parsed.nil?
          end
        end
      end

      private

      def config_file_content(config_file)
        if File.readable?(config_file)
          IO.readlines(config_file)
        else
          raise LoadError, "#{config_file} could not be read."
        end
      end

      def skip_parsing?(line)
        line.nil? || !line.include?('=') || line.strip.start_with?('#')
      end

      def parse_line(line)
        key, value = line.split('=', 2)
        {'key' => "#{key.upcase}", 'value' => value.gsub(/\"|\n/, '').to_s}
      end
    end
  end
end