class OrganizedGalleries
  @organization =
    if Rails.env.production?
      [
       ['Goblets', [24, 20, 12, 19, 17, 8, 16, 7, 15, 14, 11, 10, 9]],
       ['Sculpture', [23, 27, 26, 25, 22, 21, 18, 13, 4, 3]]
      ]
    elsif Rails.env.development?
      [
       ['Foo', (1..20).to_a],
       ['Bar', (1..20).to_a]
      ]
    else
      []
    end

  def self.organization
    @organization.map { |o| [o.first, Gallery.unscoped.where('id in (?)', o.last).order('created_at desc').all] }
  end
end

# /galleries/27-turtle-vs-octopus
# /galleries/26-lakeside
# /galleries/25-small-pond
# /galleries/24-high-falutin
# /galleries/23-the-wetlands
# /galleries/22-hanging-wallflower-2
# /galleries/21-hanging-wallflower
# /galleries/20-rose-and-thorn-wine-glass-2
# /galleries/19-kansas-prairie-glass-3
# /galleries/18-lizard-rock
# /galleries/17-kansas-prairie-glass-2
# /galleries/16-grapevine-wine-glass-3
# /galleries/15-fish-school-wine-glass
# /galleries/14-heart-and-flower-wedding-glass-set
# /galleries/13-rosegarden-sculpture
# /galleries/12-rose-and-thorn-wine-glass
# /galleries/11-rainforest-wine-glass
# /galleries/10-twin-ruby-orchid-wine-glass
# /galleries/9-blue-lily-wine-glass
# /galleries/8-kansas-prairie-glass
# /galleries/7-grapevine-wine-glass-set
# /galleries/4-ruby-calla-lily-with-dragonfly
# /galleries/3-black-rose-and-lily-bouquet
