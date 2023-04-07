namespace MovieApplicationDemo.Models
{
    public class Episode
    {
        public int Id { get; set; }
        public int Season { get; set; }
        public int Number { get; set; }
        public int SeasonEpisodeNumber { get; set; }
        public DateTime AirDate { get; set; }
        public string Title { get; set; }
        public string Summary { get; set; } 

    }
}
