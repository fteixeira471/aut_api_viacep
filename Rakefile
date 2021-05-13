# frozen_string_literal: true

task :run_rubocop do
  time_now = Time.now.strftime('%Y%m%d_%H%M%S')
  path_html_file = "reports/code_analyzer/rubocop_#{time_now}.html"
  command = "bundle exec rubocop -f pa -f h -o #{path_html_file}"
  puts 'Iniciando análise...'
  system command
  puts "\nAnálise concluída!"
  puts "Verifique os resultados em: #{File.dirname(__FILE__)}/#{path_html_file}"
end
