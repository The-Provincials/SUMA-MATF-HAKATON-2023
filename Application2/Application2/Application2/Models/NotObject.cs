using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Application2.Models
{
    internal class NotObject : LogicObject
    {
        public override bool Evaluate()
        {
            if (this.IsEvaluated)
                return this.Value;

            base.Evaluate();

            this.Value = false;

            List<LogicObject> list;
            if (!EvaluatedFrom.TryGetValue(this.Id, out list) ||
                list.Count != 1)
                throw new Exception();

            this.Value = !list[0].Value;

            return this.Value;
        }

        public override void AddSource(LogicObject other)
        {
            base.AddSource(other);

            if (EvaluatedFrom[this.Id].Count > 1)
                throw new Exception();
        }
    }
}
