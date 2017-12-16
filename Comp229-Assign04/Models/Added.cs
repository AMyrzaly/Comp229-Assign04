using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using Newtonsoft.Json;

namespace Comp229_Assign04.Models
{
    public class Added
    {
        [JsonProperty("name")]
        public string Name { get; set; }

        [JsonProperty("faction")]
        public string Faction { get; set; }

        [JsonProperty("rank")]
        public int Rank { get; set; }

        [JsonProperty("_base")]
        public int Base { get; set; }

        [JsonProperty("size")]
        public int Size { get; set; }

        [JsonProperty("deploymentZone")]
        public string DeploymentZone { get; set; }

        public string[] traits { get; set; }
        public string[] types { get; set; }
        public string[] defenseChart { get; set; }

        [JsonProperty("mobility")]
        public int Mobility { get; set; }

        [JsonProperty("willpower")]
        public int Willpower { get; set; }

        [JsonProperty("resiliance")]
        public int Resiliance { get; set; }

        [JsonProperty("wounds")]
        public int Wounds { get; set; }

        public List<Action> actions { get; set; }
        public List<SpecialAbility> specialAbilities { get; set; }

        [JsonProperty("imageUrl")]
        public string ImageUrl { get; set; }
    }

    public class Action
    {
        public string name { get; set; }
        public string type { get; set; }
        public int rating { get; set; }
        public string range { get; set; }
        public string description { get; set; }
    }

    public class SpecialAbility
    {
        public string name { get; set; }
        public string description { get; set; }
    }
}