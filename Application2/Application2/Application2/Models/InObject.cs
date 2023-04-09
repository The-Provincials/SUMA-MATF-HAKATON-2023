using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Application2.Models
{
    internal class InObject : LogicObject
    {
        public InObject(string Name, bool val)
        {
            this.Name = Name;
            this.Value = val;
        }
        public string Name { get; set; }

        public override void SetValue(bool val)
        {
            this.Value = val;
        }

        public override void AddSource(LogicObject other)
        {
            throw new Exception();
        }
    }
}
