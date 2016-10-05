require_dependency File.join Gem.loaded_specs['locomotivecms_steam'].full_gem_path, 'lib/locomotive/steam/entities/page'

class Locomotive::Steam::Page
  
  attr_writer :protected  
  def protected
    self[:protected] || false
  end
  
  def is_accessible_by? user
    ( self.protected and !user.nil? user.site_id == self.site_id ) or !self.protected
  end

end