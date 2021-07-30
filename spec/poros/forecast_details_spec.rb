require "rails_helper"

RSpec.describe ForecastDetails do
  describe 'class methods' do
    describe '::forecast' do
      VCR.use_cassette('forecast_details') do
        it 'creates forecast details object' do
          forecast_details = {:lat=>34.6597,
          :lon=>-1.9211,
          :timezone=>"Africa/Casablanca",
          :timezone_offset=>3600,
          :current=>
          {:dt=>1627259308,
            :sunrise=>1627276399,
            :sunset=>1627326889,
            :temp=>293.32,
            :feels_like=>292.44,
            :pressure=>1014,
            :humidity=>40,
            :dew_point=>279.31,
            :uvi=>0,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>2.57,
            :wind_deg=>200,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}]},
          :minutely=>
          [{:dt=>1627259340, :precipitation=>0},
            {:dt=>1627259400, :precipitation=>0},
            {:dt=>1627259460, :precipitation=>0},
            {:dt=>1627259520, :precipitation=>0},
            {:dt=>1627259580, :precipitation=>0},
            {:dt=>1627259640, :precipitation=>0},
            {:dt=>1627259700, :precipitation=>0},
            {:dt=>1627259760, :precipitation=>0},
            {:dt=>1627259820, :precipitation=>0},
            {:dt=>1627259880, :precipitation=>0},
            {:dt=>1627259940, :precipitation=>0},
            {:dt=>1627260000, :precipitation=>0},
            {:dt=>1627260060, :precipitation=>0},
            {:dt=>1627260120, :precipitation=>0},
            {:dt=>1627260180, :precipitation=>0},
            {:dt=>1627260240, :precipitation=>0},
            {:dt=>1627260300, :precipitation=>0},
            {:dt=>1627260360, :precipitation=>0},
            {:dt=>1627260420, :precipitation=>0},
            {:dt=>1627260480, :precipitation=>0},
            {:dt=>1627260540, :precipitation=>0},
            {:dt=>1627260600, :precipitation=>0},
            {:dt=>1627260660, :precipitation=>0},
            {:dt=>1627260720, :precipitation=>0},
            {:dt=>1627260780, :precipitation=>0},
            {:dt=>1627260840, :precipitation=>0},
            {:dt=>1627260900, :precipitation=>0},
            {:dt=>1627260960, :precipitation=>0},
            {:dt=>1627261020, :precipitation=>0},
            {:dt=>1627261080, :precipitation=>0},
            {:dt=>1627261140, :precipitation=>0},
            {:dt=>1627261200, :precipitation=>0},
            {:dt=>1627261260, :precipitation=>0},
            {:dt=>1627261320, :precipitation=>0},
            {:dt=>1627261380, :precipitation=>0},
            {:dt=>1627261440, :precipitation=>0},
            {:dt=>1627261500, :precipitation=>0},
            {:dt=>1627261560, :precipitation=>0},
            {:dt=>1627261620, :precipitation=>0},
            {:dt=>1627261680, :precipitation=>0},
            {:dt=>1627261740, :precipitation=>0},
            {:dt=>1627261800, :precipitation=>0},
            {:dt=>1627261860, :precipitation=>0},
            {:dt=>1627261920, :precipitation=>0},
            {:dt=>1627261980, :precipitation=>0},
            {:dt=>1627262040, :precipitation=>0},
            {:dt=>1627262100, :precipitation=>0},
            {:dt=>1627262160, :precipitation=>0},
            {:dt=>1627262220, :precipitation=>0},
            {:dt=>1627262280, :precipitation=>0},
            {:dt=>1627262340, :precipitation=>0},
            {:dt=>1627262400, :precipitation=>0},
            {:dt=>1627262460, :precipitation=>0},
            {:dt=>1627262520, :precipitation=>0},
            {:dt=>1627262580, :precipitation=>0},
            {:dt=>1627262640, :precipitation=>0},
            {:dt=>1627262700, :precipitation=>0},
            {:dt=>1627262760, :precipitation=>0},
            {:dt=>1627262820, :precipitation=>0},
            {:dt=>1627262880, :precipitation=>0},
            {:dt=>1627262940, :precipitation=>0}],
          :hourly=>
          [{:dt=>1627257600,
            :temp=>293.32,
            :feels_like=>292.44,
            :pressure=>1014,
            :humidity=>40,
            :dew_point=>279.31,
            :uvi=>0,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>1.47,
            :wind_deg=>261,
            :wind_gust=>1.69,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
            :pop=>0},
            {:dt=>1627261200,
            :temp=>294,
            :feels_like=>293.13,
            :pressure=>1014,
            :humidity=>38,
            :dew_point=>279.17,
            :uvi=>0,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>1.64,
            :wind_deg=>268,
            :wind_gust=>1.78,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
            :pop=>0},
            {:dt=>1627264800,
            :temp=>294.4,
            :feels_like=>293.57,
            :pressure=>1014,
            :humidity=>38,
            :dew_point=>279.53,
            :uvi=>0,
            :clouds=>1,
            :visibility=>10000,
            :wind_speed=>1.74,
            :wind_deg=>300,
            :wind_gust=>1.83,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
            :pop=>0},
            {:dt=>1627268400,
            :temp=>294.39,
            :feels_like=>293.67,
            :pressure=>1013,
            :humidity=>42,
            :dew_point=>280.98,
            :uvi=>0,
            :clouds=>1,
            :visibility=>10000,
            :wind_speed=>0.99,
            :wind_deg=>304,
            :wind_gust=>1.12,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
            :pop=>0},
            {:dt=>1627272000,
            :temp=>294.39,
            :feels_like=>293.74,
            :pressure=>1013,
            :humidity=>45,
            :dew_point=>281.99,
            :uvi=>0,
            :clouds=>2,
            :visibility=>10000,
            :wind_speed=>1.33,
            :wind_deg=>341,
            :wind_gust=>1.39,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
            :pop=>0},
            {:dt=>1627275600,
            :temp=>294.14,
            :feels_like=>293.57,
            :pressure=>1013,
            :humidity=>49,
            :dew_point=>282.52,
            :uvi=>0,
            :clouds=>2,
            :visibility=>10000,
            :wind_speed=>1.47,
            :wind_deg=>26,
            :wind_gust=>1.55,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
            :pop=>0},
            {:dt=>1627279200,
            :temp=>295.16,
            :feels_like=>294.67,
            :pressure=>1014,
            :humidity=>48,
            :dew_point=>283.11,
            :uvi=>0.21,
            :clouds=>1,
            :visibility=>10000,
            :wind_speed=>1.78,
            :wind_deg=>39,
            :wind_gust=>1.83,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
            :pop=>0},
            {:dt=>1627282800,
            :temp=>296.49,
            :feels_like=>296.13,
            :pressure=>1014,
            :humidity=>48,
            :dew_point=>284.23,
            :uvi=>0.95,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>1.14,
            :wind_deg=>72,
            :wind_gust=>1.27,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
            :pop=>0},
            {:dt=>1627286400,
            :temp=>297.79,
            :feels_like=>297.43,
            :pressure=>1014,
            :humidity=>43,
            :dew_point=>283.92,
            :uvi=>2.44,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>0.47,
            :wind_deg=>52,
            :wind_gust=>1.15,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
            :pop=>0},
            {:dt=>1627290000,
            :temp=>299.39,
            :feels_like=>299.39,
            :pressure=>1014,
            :humidity=>37,
            :dew_point=>283.1,
            :uvi=>4.61,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>1.24,
            :wind_deg=>348,
            :wind_gust=>2.1,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
            :pop=>0},
            {:dt=>1627293600,
            :temp=>300.91,
            :feels_like=>300.21,
            :pressure=>1014,
            :humidity=>33,
            :dew_point=>282.75,
            :uvi=>6.87,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>2.26,
            :wind_deg=>351,
            :wind_gust=>2.91,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
            :pop=>0},
            {:dt=>1627297200,
            :temp=>302.26,
            :feels_like=>301.11,
            :pressure=>1014,
            :humidity=>30,
            :dew_point=>282.52,
            :uvi=>8.73,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>3.29,
            :wind_deg=>351,
            :wind_gust=>3.83,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
            :pop=>0},
            {:dt=>1627300800,
            :temp=>303.34,
            :feels_like=>301.94,
            :pressure=>1013,
            :humidity=>28,
            :dew_point=>282.47,
            :uvi=>9.55,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>3.97,
            :wind_deg=>350,
            :wind_gust=>4.61,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
            :pop=>0},
            {:dt=>1627304400,
            :temp=>303.98,
            :feels_like=>302.54,
            :pressure=>1012,
            :humidity=>28,
            :dew_point=>282.93,
            :uvi=>9,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>5.12,
            :wind_deg=>350,
            :wind_gust=>5.4,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
            :pop=>0},
            {:dt=>1627308000,
            :temp=>303.81,
            :feels_like=>302.72,
            :pressure=>1012,
            :humidity=>32,
            :dew_point=>284.01,
            :uvi=>7.39,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>6.24,
            :wind_deg=>352,
            :wind_gust=>5.67,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
            :pop=>0},
            {:dt=>1627311600,
            :temp=>302.89,
            :feels_like=>302.14,
            :pressure=>1012,
            :humidity=>36,
            :dew_point=>285.11,
            :uvi=>5.13,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>7.42,
            :wind_deg=>354,
            :wind_gust=>6.17,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
            :pop=>0},
            {:dt=>1627315200,
            :temp=>301.57,
            :feels_like=>301.27,
            :pressure=>1012,
            :humidity=>41,
            :dew_point=>286.29,
            :uvi=>2.91,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>6.35,
            :wind_deg=>8,
            :wind_gust=>5.21,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
            :pop=>0},
            {:dt=>1627318800,
            :temp=>300.43,
            :feels_like=>300.39,
            :pressure=>1013,
            :humidity=>43,
            :dew_point=>286.24,
            :uvi=>1.23,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>5.26,
            :wind_deg=>16,
            :wind_gust=>4.99,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
            :pop=>0},
            {:dt=>1627322400,
            :temp=>299.43,
            :feels_like=>299.43,
            :pressure=>1013,
            :humidity=>44,
            :dew_point=>285.82,
            :uvi=>0.35,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>5.12,
            :wind_deg=>14,
            :wind_gust=>5.61,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
            :pop=>0},
            {:dt=>1627326000,
            :temp=>297.83,
            :feels_like=>297.61,
            :pressure=>1014,
            :humidity=>48,
            :dew_point=>285.42,
            :uvi=>0,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>4.26,
            :wind_deg=>12,
            :wind_gust=>5.59,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
            :pop=>0},
            {:dt=>1627329600,
            :temp=>296.51,
            :feels_like=>296.23,
            :pressure=>1015,
            :humidity=>51,
            :dew_point=>285.24,
            :uvi=>0,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>2.65,
            :wind_deg=>15,
            :wind_gust=>3.68,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
            :pop=>0},
            {:dt=>1627333200,
            :temp=>295.68,
            :feels_like=>295.37,
            :pressure=>1016,
            :humidity=>53,
            :dew_point=>285.18,
            :uvi=>0,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>2.18,
            :wind_deg=>24,
            :wind_gust=>2.92,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
            :pop=>0},
            {:dt=>1627336800,
            :temp=>295.1,
            :feels_like=>294.81,
            :pressure=>1016,
            :humidity=>56,
            :dew_point=>285.14,
            :uvi=>0,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>2.01,
            :wind_deg=>29,
            :wind_gust=>2.27,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
            :pop=>0},
            {:dt=>1627340400,
            :temp=>294.46,
            :feels_like=>294.16,
            :pressure=>1016,
            :humidity=>58,
            :dew_point=>285.15,
            :uvi=>0,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>1.21,
            :wind_deg=>28,
            :wind_gust=>1.28,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
            :pop=>0},
            {:dt=>1627344000,
            :temp=>293.94,
            :feels_like=>293.62,
            :pressure=>1016,
            :humidity=>59,
            :dew_point=>285.02,
            :uvi=>0,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>0.44,
            :wind_deg=>23,
            :wind_gust=>0.62,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
            :pop=>0},
            {:dt=>1627347600,
            :temp=>293.46,
            :feels_like=>293.11,
            :pressure=>1015,
            :humidity=>60,
            :dew_point=>284.86,
            :uvi=>0,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>0.47,
            :wind_deg=>84,
            :wind_gust=>0.51,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
            :pop=>0},
            {:dt=>1627351200,
            :temp=>293.18,
            :feels_like=>292.81,
            :pressure=>1015,
            :humidity=>60,
            :dew_point=>284.58,
            :uvi=>0,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>1.07,
            :wind_deg=>112,
            :wind_gust=>1.05,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
            :pop=>0},
            {:dt=>1627354800,
            :temp=>292.81,
            :feels_like=>292.4,
            :pressure=>1015,
            :humidity=>60,
            :dew_point=>284.29,
            :uvi=>0,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>0.88,
            :wind_deg=>123,
            :wind_gust=>0.94,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
            :pop=>0},
            {:dt=>1627358400,
            :temp=>292.38,
            :feels_like=>291.95,
            :pressure=>1015,
            :humidity=>61,
            :dew_point=>283.99,
            :uvi=>0,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>0.38,
            :wind_deg=>99,
            :wind_gust=>0.55,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
            :pop=>0},
            {:dt=>1627362000,
            :temp=>292.05,
            :feels_like=>291.59,
            :pressure=>1015,
            :humidity=>61,
            :dew_point=>283.77,
            :uvi=>0,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>0.34,
            :wind_deg=>97,
            :wind_gust=>0.47,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
            :pop=>0},
            {:dt=>1627365600,
            :temp=>293.73,
            :feels_like=>293.31,
            :pressure=>1015,
            :humidity=>56,
            :dew_point=>283.89,
            :uvi=>0.21,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>0.67,
            :wind_deg=>6,
            :wind_gust=>0.72,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
            :pop=>0},
            {:dt=>1627369200,
            :temp=>295.78,
            :feels_like=>295.35,
            :pressure=>1015,
            :humidity=>48,
            :dew_point=>283.44,
            :uvi=>0.98,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>1.21,
            :wind_deg=>48,
            :wind_gust=>1.34,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
            :pop=>0},
            {:dt=>1627372800,
            :temp=>297.54,
            :feels_like=>297.11,
            :pressure=>1015,
            :humidity=>41,
            :dew_point=>282.81,
            :uvi=>2.54,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>1.67,
            :wind_deg=>44,
            :wind_gust=>1.82,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
            :pop=>0},
            {:dt=>1627376400,
            :temp=>299.58,
            :feels_like=>299.58,
            :pressure=>1014,
            :humidity=>34,
            :dew_point=>282.05,
            :uvi=>4.83,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>1.93,
            :wind_deg=>42,
            :wind_gust=>2.22,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
            :pop=>0},
            {:dt=>1627380000,
            :temp=>301.82,
            :feels_like=>300.7,
            :pressure=>1014,
            :humidity=>29,
            :dew_point=>281.28,
            :uvi=>7.33,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>2.59,
            :wind_deg=>40,
            :wind_gust=>2.88,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
            :pop=>0},
            {:dt=>1627383600,
            :temp=>303.88,
            :feels_like=>302.24,
            :pressure=>1013,
            :humidity=>25,
            :dew_point=>280.89,
            :uvi=>9.32,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>3.4,
            :wind_deg=>28,
            :wind_gust=>3.43,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
            :pop=>0},
            {:dt=>1627387200,
            :temp=>305.5,
            :feels_like=>303.66,
            :pressure=>1013,
            :humidity=>23,
            :dew_point=>280.99,
            :uvi=>10.21,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>4.14,
            :wind_deg=>24,
            :wind_gust=>4.2,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
            :pop=>0},
            {:dt=>1627390800,
            :temp=>306.64,
            :feels_like=>304.76,
            :pressure=>1012,
            :humidity=>22,
            :dew_point=>281.43,
            :uvi=>9.71,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>4.85,
            :wind_deg=>20,
            :wind_gust=>4.77,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
            :pop=>0},
            {:dt=>1627394400,
            :temp=>307.15,
            :feels_like=>305.42,
            :pressure=>1011,
            :humidity=>23,
            :dew_point=>282.55,
            :uvi=>7.95,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>5.55,
            :wind_deg=>11,
            :wind_gust=>4.55,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
            :pop=>0},
            {:dt=>1627398000,
            :temp=>306.3,
            :feels_like=>305.19,
            :pressure=>1010,
            :humidity=>29,
            :dew_point=>284.67,
            :uvi=>5.52,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>5.99,
            :wind_deg=>6,
            :wind_gust=>4.71,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
            :pop=>0},
            {:dt=>1627401600,
            :temp=>304.96,
            :feels_like=>304.38,
            :pressure=>1010,
            :humidity=>35,
            :dew_point=>286.58,
            :uvi=>3.07,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>6.04,
            :wind_deg=>12,
            :wind_gust=>5,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
            :pop=>0},
            {:dt=>1627405200,
            :temp=>303.95,
            :feels_like=>303.54,
            :pressure=>1010,
            :humidity=>38,
            :dew_point=>287.44,
            :uvi=>1.29,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>6.08,
            :wind_deg=>22,
            :wind_gust=>5.81,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
            :pop=>0},
            {:dt=>1627408800,
            :temp=>302.53,
            :feels_like=>302.46,
            :pressure=>1010,
            :humidity=>43,
            :dew_point=>288,
            :uvi=>0.36,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>5.75,
            :wind_deg=>25,
            :wind_gust=>6.1,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
            :pop=>0},
            {:dt=>1627412400,
            :temp=>300.19,
            :feels_like=>300.73,
            :pressure=>1011,
            :humidity=>52,
            :dew_point=>288.82,
            :uvi=>0,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>4.3,
            :wind_deg=>12,
            :wind_gust=>5.57,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
            :pop=>0},
            {:dt=>1627416000,
            :temp=>298.17,
            :feels_like=>298.29,
            :pressure=>1012,
            :humidity=>60,
            :dew_point=>289.26,
            :uvi=>0,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>2.79,
            :wind_deg=>354,
            :wind_gust=>3.59,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
            :pop=>0},
            {:dt=>1627419600,
            :temp=>297.19,
            :feels_like=>297.35,
            :pressure=>1013,
            :humidity=>65,
            :dew_point=>289.42,
            :uvi=>0,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>1.88,
            :wind_deg=>345,
            :wind_gust=>2.01,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
            :pop=>0},
            {:dt=>1627423200,
            :temp=>296.62,
            :feels_like=>296.77,
            :pressure=>1013,
            :humidity=>67,
            :dew_point=>289.48,
            :uvi=>0,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>1.23,
            :wind_deg=>354,
            :wind_gust=>1.36,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
            :pop=>0},
            {:dt=>1627426800,
            :temp=>296.19,
            :feels_like=>296.35,
            :pressure=>1013,
            :humidity=>69,
            :dew_point=>289.42,
            :uvi=>0,
            :clouds=>0,
            :visibility=>10000,
            :wind_speed=>1.23,
            :wind_deg=>64,
            :wind_gust=>1.36,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
            :pop=>0}],
          :daily=>
          [{:dt=>1627300800,
            :sunrise=>1627276399,
            :sunset=>1627326889,
            :moonrise=>1627334280,
            :moonset=>1627284660,
            :moon_phase=>0.59,
            :temp=>
              {:day=>303.34, :min=>293.32, :max=>303.98, :night=>295.1, :eve=>299.43, :morn=>295.16},
            :feels_like=>{:day=>301.94, :night=>294.81, :eve=>299.43, :morn=>294.67},
            :pressure=>1013,
            :humidity=>28,
            :dew_point=>282.47,
            :wind_speed=>7.42,
            :wind_deg=>354,
            :wind_gust=>6.17,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
            :clouds=>0,
            :pop=>0,
            :uvi=>9.55},
            {:dt=>1627387200,
            :sunrise=>1627362842,
            :sunset=>1627413246,
            :moonrise=>1627422540,
            :moonset=>1627374900,
            :moon_phase=>0.62,
            :temp=>
              {:day=>305.5, :min=>292.05, :max=>307.15, :night=>296.62, :eve=>302.53, :morn=>293.73},
            :feels_like=>{:day=>303.66, :night=>296.77, :eve=>302.46, :morn=>293.31},
            :pressure=>1013,
            :humidity=>23,
            :dew_point=>280.99,
            :wind_speed=>6.08,
            :wind_deg=>22,
            :wind_gust=>6.1,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
            :clouds=>0,
            :pop=>0,
            :uvi=>10.21},
            {:dt=>1627473600,
            :sunrise=>1627449287,
            :sunset=>1627499601,
            :moonrise=>1627510620,
            :moonset=>1627464960,
            :moon_phase=>0.65,
            :temp=>
              {:day=>310.25, :min=>293.69, :max=>312.19, :night=>298.9, :eve=>303.77, :morn=>294.9},
            :feels_like=>{:day=>308.86, :night=>299.07, :eve=>304.15, :morn=>295.04},
            :pressure=>1010,
            :humidity=>21,
            :dew_point=>283.46,
            :wind_speed=>7.11,
            :wind_deg=>5,
            :wind_gust=>6.33,
            :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
            :clouds=>1,
            :pop=>0,
            :uvi=>10.21},
            {:dt=>1627560000,
            :sunrise=>1627535731,
            :sunset=>1627585954,
            :moonrise=>1627598580,
            :moonset=>1627554900,
            :moon_phase=>0.68,
            :temp=>
              {:day=>315.29, :min=>298.53, :max=>315.29, :night=>302.84, :eve=>308.49, :morn=>298.77},
            :feels_like=>{:day=>312.28, :night=>302.71, :eve=>307.89, :morn=>298.75},
            :pressure=>1012,
            :humidity=>10,
            :dew_point=>276.25,
            :wind_speed=>5.92,
            :wind_deg=>10,
            :wind_gust=>7.76,
            :weather=>[{:id=>802, :main=>"Clouds", :description=>"scattered clouds", :icon=>"03d"}],
            :clouds=>34,
            :pop=>0,
            :uvi=>10.3},
            {:dt=>1627646400,
            :sunrise=>1627622176,
            :sunset=>1627672307,
            :moonrise=>0,
            :moonset=>1627644720,
            :moon_phase=>0.72,
            :temp=>
              {:day=>316.05, :min=>302.42, :max=>316.49, :night=>304.51, :eve=>310.9, :morn=>303.76},
            :feels_like=>{:day=>312.49, :night=>302.99, :eve=>308.92, :morn=>301.97},
            :pressure=>1012,
            :humidity=>8,
            :dew_point=>274.79,
            :wind_speed=>4.88,
            :wind_deg=>226,
            :wind_gust=>7.82,
            :weather=>[{:id=>802, :main=>"Clouds", :description=>"scattered clouds", :icon=>"03d"}],
            :clouds=>26,
            :pop=>0,
            :uvi=>10.31},
            {:dt=>1627732800,
            :sunrise=>1627708621,
            :sunset=>1627758658,
            :moonrise=>1627686540,
            :moonset=>1627734540,
            :moon_phase=>0.75,
            :temp=>
              {:day=>312.97, :min=>301.91, :max=>312.97, :night=>302.35, :eve=>305.15, :morn=>301.91},
            :feels_like=>{:day=>310.32, :night=>300.74, :eve=>303, :morn=>300.59},
            :pressure=>1011,
            :humidity=>12,
            :dew_point=>278.07,
            :wind_speed=>6.11,
            :wind_deg=>2,
            :wind_gust=>7.08,
            :weather=>[{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04d"}],
            :clouds=>88,
            :pop=>0,
            :uvi=>11},
            {:dt=>1627819200,
            :sunrise=>1627795066,
            :sunset=>1627845007,
            :moonrise=>1627774620,
            :moonset=>1627824360,
            :moon_phase=>0.78,
            :temp=>
              {:day=>308.97, :min=>298.15, :max=>308.97, :night=>298.83, :eve=>302.79, :morn=>299.38},
            :feels_like=>{:day=>306.38, :night=>298.11, :eve=>301.1, :morn=>299.38},
            :pressure=>1014,
            :humidity=>13,
            :dew_point=>276.27,
            :wind_speed=>7.2,
            :wind_deg=>8,
            :wind_gust=>6.26,
            :weather=>[{:id=>803, :main=>"Clouds", :description=>"broken clouds", :icon=>"04d"}],
            :clouds=>54,
            :pop=>0,
            :uvi=>11},
            {:dt=>1627905600,
            :sunrise=>1627881511,
            :sunset=>1627931355,
            :moonrise=>1627862880,
            :moonset=>1627914240,
            :moon_phase=>0.81,
            :temp=>
              {:day=>311.12, :min=>296.6, :max=>311.12, :night=>297.36, :eve=>302.18, :morn=>297.76},
            :feels_like=>{:day=>308.3, :night=>297.01, :eve=>301.24, :morn=>297.01},
            :pressure=>1011,
            :humidity=>11,
            :dew_point=>275.38,
            :wind_speed=>5.23,
            :wind_deg=>354,
            :wind_gust=>7,
            :weather=>[{:id=>802, :main=>"Clouds", :description=>"scattered clouds", :icon=>"03d"}],
            :clouds=>29,
            :pop=>0,
            :uvi=>11}]}

          fd = ForecastDetails.new(forecast_details)

          expect(fd).to be_a(ForecastDetails)
          expect(fd.id).to eq(nil)
          expect(fd.current_weather).to be_a(Hash)
          expect(fd.daily_weather).to be_a(Hash)
        end
      end
    end

  end
end