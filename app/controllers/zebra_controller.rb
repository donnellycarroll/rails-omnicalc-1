class ZebraController < ApplicationController
  def home
    render({ :template => "calc_templates/new_square_calc" })
  end

  def new_square
    render({ :template => "calc_templates/new_square_calc" })
  end

  def square_results
    @the_num = params.fetch("users_number").to_f
    @the_result = @the_num ** 2
    render({ :template => "calc_templates/square_results" })
  end

  def new_square_root
    render({ :template => "calc_templates/new_square_root_calc" })
  end

  def square_root_result
    @the_num = params.fetch("users_number").to_f

    @the_result = @the_num ** (0.5)

    render({ :template => "calc_templates/square_root_results" })
  end

  def new_payment
    render({ :template => "calc_templates/new_payment_calc" })
  end

  def payment_results
    @the_apr = params.fetch("user_apr").to_f
    @the_years = params.fetch("user_years").to_f
    @the_principal = params.fetch("user_pv").to_f

    @the_result = ((@the_apr / 1200) * @the_principal) / (1 - (1 + (@the_apr / 1200)) ** (-@the_years * 12))

    render({ :template => "calc_templates/payment_results" })
  end

  def new_random
    render({ :template => "calc_templates/new_random" })
  end

  def random_results
    @the_min = params.fetch("user_min").to_f
    @the_max = params.fetch("user_max").to_f

    @the_result = rand(@the_min..@the_max)

    render({ :template => "calc_templates/random_results" })
  end
end
