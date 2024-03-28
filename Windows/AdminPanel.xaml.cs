using Pachkov_Auth.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Pachkov_Auth.Windows
{
    /// <summary>
    /// Логика взаимодействия для AdminPanel.xaml
    /// </summary>
    public partial class AdminPanel : Window
    {
        public int _id;
        public AdminPanel(string UserLogin1, int id)
        {
            InitializeComponent();

            RoleBox.SelectedIndex = 0;

            _id = id;

            int find = id;

            var context = new AppDbContext();

            var user = context.Users.SingleOrDefault(x => x.Id == id);

            string Finde = user.Login;

            UserLogin.Text = "Здравствуйте Администратор, " + Finde + "!";

            var users = context.Users.ToList();

            string AllUsers = string.Join(Environment.NewLine, users.Select(u => $"ID: {u.Id}, Логин: {u.Login}, Роль: {u.Role}" ));

            UsersAll.Text = "Список всех пользователей:" + Environment.NewLine + AllUsers;


        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            Environment.Exit(0);
        }

        private void Edit_Click(object sender, RoutedEventArgs e)
        {
            if ( EditId.Text.Length >= 1)
            {
                string x = RoleBox.Text;

                var userId = Convert.ToInt32(EditId.Text);

                var context = new AppDbContext();

                var user = context.Users.Find(userId);

                string RoleEdit = EditRole.Text;

                user.Role = x;
                context.SaveChanges();

                MessageBox.Show("Роль успешно изменена на " + x);

                UsersAll.Text = "";

                var users = context.Users.ToList();

                string AllUsers = string.Join(Environment.NewLine, users.Select(u => $"ID: {u.Id}, Логин: {u.Login}, Роль: {u.Role}"));

                UsersAll.Text = "Список всех пользователей:" + Environment.NewLine + AllUsers;


            }
            else
            {
                MessageBox.Show("Роль выбрана не правильно!\n" +
                    "Выберите Admin или User");
            }
        }
    }
}
