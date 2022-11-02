using WeatherApi.Models;

public interface IWeatherForecastService
{
  List<WeatherForecast> GetAll();
}

public class WeatherForecastService : IWeatherForecastService
{
  private readonly List<string> _summaries = new List<string>
  {
        "Freezing", "Bracing", "Chilly", 
        "Cool", "Mild", "Warm", 
        "Balmy", "Hot", "Sweltering", "Scorching"
  };
    
  public List<WeatherForecast> GetAll()
  {
    return
    Enumerable
    .Range(0, 10)
    .Select(x =>
    {
      return new WeatherForecast
      {
        Date = DateTime.Now.AddDays(-x),
        Summary = _summaries[Random.Shared.Next(0, 5)],
        TemperatureC = Random.Shared.Next(-20, 50),
      };
    })
    .ToList();
  }
}