using StackExchange.Redis;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace XcExample.Api.Weather
{
    /// <summary>
    /// class for wrapping redis functionality
    /// </summary>
    public class Redis
    {
        public Redis(string endpoint)
        {
            redis = ConnectionMultiplexer.Connect(
            new ConfigurationOptions
            {
                EndPoints = { endpoint }
            });
        }
        private ConnectionMultiplexer redis;
        public async Task<TimeSpan> PingAsync()
        {
            var db = redis.GetDatabase();
            return await db.PingAsync();
        }
    }
}
