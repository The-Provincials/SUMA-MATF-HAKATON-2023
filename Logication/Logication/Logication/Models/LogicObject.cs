using System;
using System.Collections.Generic;
using System.Linq;
using System.Numerics;
using System.Text;
using System.Threading.Tasks;

namespace Logication.Models
{
    internal class LogicObject
    {

        public LogicObject()
        {
            this.Id = NumberOfObjects++;
            this.Value = false;
            this.IsEvaluated = false;
        }

        protected bool IsEvaluated = false;
        protected bool IsBeingEvaluated = false;

        public bool Value
        {
            get; set;
        }
        public int Id
        {
            get; set;
        }

        public void Deevaluate()
        {
            this.IsBeingEvaluated = false;
            this.IsEvaluated = false;
            
            List<LogicObject> list;
            if (EvaluatedFrom.TryGetValue(this.Id, out list))
            {
                foreach (LogicObject obj in EvaluatedFrom[this.Id])
                {
                    obj.Deevaluate();
                }
            }

        }

        public virtual bool Evaluate()
        {
            if (this.IsBeingEvaluated)
            {
                throw new Exception();
            }
            this.IsBeingEvaluated = true;
            
            List<LogicObject> list;
            if(EvaluatedFrom.TryGetValue(this.Id, out list))
            {
                foreach(LogicObject obj in EvaluatedFrom[this.Id])
                {
                    obj.Evaluate();
                }
            }

            this.IsEvaluated = true;
            this.IsBeingEvaluated = false;
            return this.Value;
        }

        public virtual void AddSource(LogicObject other)
        {
            if (other.Id == this.Id)
                throw new Exception();
            List<LogicObject> list;
            if (EvaluatedFrom.TryGetValue(this.Id, out list))
            {
                foreach (LogicObject obj in list)
                    if (obj.Id == other.Id)
                        return;
            }
            else
            {
                EvaluatedFrom.Add(this.Id, new List<LogicObject>());
            }

            EvaluatedFrom[this.Id].Add(other);
            this.IsEvaluated = false;
            other.IsEvaluated = false;

        }

        public virtual void SetValue(bool value)
        {
            throw new Exception();
        }

        public void RemoveSource(LogicObject other)
        {
            List<LogicObject> list;
            if(!EvaluatedFrom.TryGetValue(this.Id, out list))
            {
                throw new Exception();
            }
            try
            {
                EvaluatedFrom[this.Id].Remove(other);
            }
            catch (Exception){
                throw new Exception();
            }
            this.IsEvaluated = false;
            other.IsEvaluated = false;
        }

        public static Dictionary<int, List<LogicObject>> EvaluatedFrom = new Dictionary<int, List<LogicObject>>();
        public static int NumberOfObjects = 0;
    }
}
