using System;

namespace DataLayer
{
    public interface ILogRepository
    {
        void LogAccess(string controller, string action, string description, DateTime now);

    }
}
