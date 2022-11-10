using Microsoft.AspNetCore.Mvc;
using WeatherApi.Models;

namespace WeatherApi.Controllers;

[ApiController]
[Route("[controller]")]
public class WeatherForecastController : ControllerBase
{
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
  }

  [HttpPost(Name = "PostWeatherForecast")]
  public WeatherForecast Post([FromBody]WeatherForecast model)
  {
    _service.Add(model);
    return model;
    //return new WeatherForecast();
  }
}
