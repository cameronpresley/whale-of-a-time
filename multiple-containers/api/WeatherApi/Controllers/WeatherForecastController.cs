using Microsoft.AspNetCore.Mvc;
using WeatherApi.Models;

namespace WeatherApi.Controllers;

[ApiController]
[Route("[controller]")]
public class WeatherForecastController : ControllerBase
{
  // private static readonly string[] Summaries = new[]
  // {
  //     "Freezing", "Bracing", "Chilly", "Cool", "Mild", "Warm", "Balmy", "Hot", "Sweltering", "Scorching"
  // };

  private readonly ILogger<WeatherForecastController> _logger;
  private readonly IWeatherForecastService _service;

  public WeatherForecastController(ILogger<WeatherForecastController> logger, IWeatherForecastService service)
  {
    _logger = logger;
    _service = service;
  }

  [HttpGet(Name = "GetWeatherForecast")]
  public IEnumerable<WeatherForecast> Get()
  {
    return _service.GetAll();
    // return Enumerable.Range(1, 5).Select(index => new WeatherForecast
    // {
    //   Date = DateTime.Now.AddDays(index),
    //   TemperatureC = Random.Shared.Next(-20, 55),
    //   Summary = Summaries[Random.Shared.Next(Summaries.Length)]
    // })
    // .ToArray();
  }
}
