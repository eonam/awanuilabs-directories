# AwanuiLabs Directory Project

A WordPress-based directory application with React frontend integration.

## Project Architecture

### WordPress Components
- **Custom Theme** featuring:
  - Custom post type for Locations
  - Two taxonomies: Regions and Services
- **Custom Plugin**: "collection-centre-details"
  - Implements custom Gutenberg block using React
  - Manages Location's additional details
- **WP REST API** integration for data fetching

## Installation Guide

### WordPress Setup

- **Local Environment**
   - Set up a virtual host `https://loc.awanuilabs-directories.com/`
   - Create database named "awanuilabs"
   - Import database dump from `/database` directory

- **WordPress Configuration**
   - Verify your database credentials if it matches from the configs from `wp-config.php` file
   - Access admin panel: `https://loc.awanuilabs-directories.com/wp-admin`
   - Login credentials:
     - Username: `admin`
     - Password: `12345`
   - Configure permalinks:
     1. Navigate to Settings > Permalink
     2. Select "Post Name"
     3. Save Changes

### React Frontend Setup

1. Navigate to frontend directory:
   ```bash
   cd frontend
   ```
2. Install dependencies
   ```bash
   npm install
   ```
3. Start development server:
   ```bash
   npm start
   ```
4. Access the application at `http://localhost:3000` (or the `port` printed in terminal)

## Future Improvements

1. **Test Implementation**
    - React unit testing setup
    
2. **Suggested Enhancements**
    - Implement proper security measures for API endpoints