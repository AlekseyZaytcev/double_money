class SalaryService
  def self.call(salary, hours, shifts)
    salary * 22 * shifts / hours
  end
end
