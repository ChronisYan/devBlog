# frozen_string_literal: true

# Controller for handing home, contact, and about pages
class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
  end

  def about; end

  def contact; end
end
