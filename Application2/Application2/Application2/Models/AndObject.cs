using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Application2.Models
{
    internal class AndObject : LogicObject
    {
        public AndObject()
        {

        }

        public override bool Evaluate()
        {
            if (this.IsEvaluated)
                return this.Value;
            base.Evaluate();

            List<LogicObject> list;
            if (!EvaluatedFrom.TryGetValue(this.Id, out list) ||
                    EvaluatedFrom[this.Id].Count < 1)
                throw new Exception();

            foreach (LogicObject obj in list)
            {
                this.Value &= obj.Value;
            }

            return this.Value;
        }
    }
}
