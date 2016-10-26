using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TicketReservation
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        public static index formHome;
        public static movies formMovies;
        public static reservations formReservations;
        public static login formLogin;
        [STAThread]
        static void Main()
        {

            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            formHome = new index();
            Application.Run(formHome);
        }
    }
}
