using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using MovieApplicationDemo.Models;

namespace MovieApplicationDemo.Data
{
    public class MovieApplicationDemoContext : DbContext
    {
        public MovieApplicationDemoContext (DbContextOptions<MovieApplicationDemoContext> options)
            : base(options)
        {
        }

        public DbSet<MovieApplicationDemo.Models.Episode> Episode { get; set; } = default!;
    }
}
