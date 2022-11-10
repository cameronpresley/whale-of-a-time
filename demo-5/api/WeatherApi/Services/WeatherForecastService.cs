using Dapper;
using Npgsql;
using WeatherApi.Models;


public interface IWeatherForecastService
{
  List<WeatherForecast> GetAll();
  WeatherForecast Add(WeatherForecast forecast);
}

public class WeatherForecastService : IWeatherForecastService
{
  private readonly List<string> _summaries = new List<string>
  {
        "Freezing", "Bracing", "Chilly",
        "Cool", "Mild", "Warm",
        "Balmy", "Hot", "Sweltering", "Scorching"
  };
  private readonly string _connectionString;

  public WeatherForecastService(IConfiguration config)
  {
    _connectionString = config.GetConnectionString("WeatherContext");
  }
  public List<WeatherForecast> GetAll()
  {
    const string sql = "SELECT * FROM forecasts";
    using (var connection = new NpgsqlConnection(_connectionString))
    {
      return connection.Query<WeatherForecast>(sql).ToList();
    }
  }

  public WeatherForecast Add(WeatherForecast forecast)
  {
    const string sql = @"INSERT INTO forecasts(date,temperatureC,summary)
                         VALUES(@date,@temperatureC,@summary)";
    using var connection = new NpgsqlConnection(_connectionString);
    connection.Execute(sql, new
    {
      date = forecast.Date,
      temperatureC = forecast.TemperatureC,
      summary = forecast.Summary
    });
    return forecast;
  }
}