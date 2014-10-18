class OrganizedGalleries
  @organization =
    if Rails.env.production?
      if vessels_env = ENV['CATEGORY_VESSELS']
        vessel_ids = vessels_env.split(',')
      else
        vessel_ids = [24, 20, 12, 19, 17, 8, 16, 7, 15, 14, 11, 10, 9, 29, 33, 34, 35, 59, 60, 57]
      end
      if sculpture_env = ENV['CATEGORY_SCULPTURE']
        sculpture_ids = sculpture_env.split(',')
      else
        sculpture_ids = [23, 27, 26, 25, 22, 21, 18, 13, 4, 3, 28, 30, 31, 32, 36, 37, 38, 39, 40, 41, 42, 43, 44, 54, 61, 55, 56, 62, 58, 63, 64, 65, 66]
      end
      if art_pipe_env = ENV['CATEGORY_ART_PIPE']
        art_pipe_ids = art_pipe_env.split(',')
      else
        art_pipe_ids = [45, 46, 47, 48, 49, 50, 51, 52, 53]
      end
      [
       ['Vessels', vessel_ids],
       ['Sculpture', sculpture_ids],
       ['Art Pipes', art_pipe_ids]
      ]
    elsif Rails.env.development?
      [
       ['Foo', (1..20).to_a],
       ['Bar', (1..20).to_a],
       ['Baz', (1..20).to_a]
      ]
    else
      []
    end

  def self.organization
    @organization.map { |o| [o.first, Gallery.unscoped.where('id in (?)', o.last).order('created_at desc').all] }
  end
end

# /galleries/44-wetlands-collaboration-1
# /galleries/43-sea-monster-vs-submarine
# /galleries/42-seascape-collaboration-3
# /galleries/41-sea-octopus-9th-of-a-series
# /galleries/40-seascape-collaborative-series-number-2
# /galleries/39-comet-series-number-2
# /galleries/38-seascape-collaborative-series-number-1
# /galleries/37-comet-series-number-1
# /galleries/36-deep-sea-glow
# /galleries/35-sea-otter-with-kelp
# /galleries/34-manta-ray-with-kelp
# /galleries/33-morning-poppy
# /galleries/32-bird-and-branch
# /galleries/31-giant-squid-vs-whale
# /galleries/30-sea-octopus-8th-of-a-series
# /galleries/29-morning-rose
# /galleries/28-rose-vine
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
