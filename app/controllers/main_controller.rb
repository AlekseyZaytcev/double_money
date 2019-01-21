class MainController
  ROOT_PATH = File.expand_path(File.join(File.dirname(__FILE__), '..', '..'))

  def initialize
    @builder = Gtk::Builder.new
    @builder.add_from_file(File.join(ROOT_PATH, 'app/views/main_window.glade'))
    @builder.connect_signals { |handler| method(handler) }

    @hours = HoursLoaderService.call(File.join(ROOT_PATH, 'hours.yml'))

    @window       = @builder.get_object('window')
    @month_list   = @builder.get_object('month_list')
    @salary_input = @builder.get_object('salary_input')
    @shifts_input = @builder.get_object('shifts_input')
    @result_label = @builder.get_object('result_label')
  end

  def run
    @window.show
    Gtk.main
  end

  def app_calculate
    salary = @salary_input.text.to_f
    shifts = @shifts_input.text.to_i
    hours  = @hours[@month_list.active_id]

    @result_label.text = SalaryService.call(salary, hours, shifts).round(2).to_s
  end
end
